<?php
declare(strict_types=1);

namespace Schnitzler\ExtbaseWithSymfonyForms\Controller;

use Schnitzler\ExtbaseWithSymfonyForms\Enquiry;
use Symfony\Bridge\Twig\Extension\FormExtension;
use Symfony\Bridge\Twig\Extension\TranslationExtension;
use Symfony\Bridge\Twig\Form\TwigRendererEngine;
use Symfony\Component\Form\Extension\Core\Type\FormType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Csrf\CsrfExtension;
use Symfony\Component\Form\Extension\Validator\ValidatorExtension;
use Symfony\Component\Form\FormRenderer;
use Symfony\Component\Form\Forms;
use Symfony\Component\Security\Csrf\CsrfTokenManager;
use Symfony\Component\Translation\Loader\XliffFileLoader;
use Symfony\Component\Translation\Translator;
use Symfony\Component\Validator\Constraints\NotBlank;
use Symfony\Component\Validator\Validation;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use Twig\RuntimeLoader\FactoryRuntimeLoader;
use TYPO3\CMS\Core\Core\Environment;
use TYPO3\CMS\Core\Utility\ExtensionManagementUtility;
use TYPO3\CMS\Extbase\Mvc\Controller\ActionController;

/**
 * Class Schnitzler\ExtbaseWithSymfonyForms\Controller\FormController
 */
class FormController extends ActionController
{
    /**
     * @var \Twig\Environment
     */
    private $twig;

    /**
     * @var ValidatorInterface
     */
    private $validator;

    public function initializeObject(): void
    {
        $vendorDirectoryPath = Environment::getProjectPath() . '/vendor';

        // twig files could also be placed into Resources/Private/Templates but the convention in symfony is
        // to place twig files in a views folder.
        $this->twig = new \Twig\Environment(new \Twig_Loader_Filesystem([
            ExtensionManagementUtility::extPath('extbase_with_symfony_forms', 'views'),
            $vendorDirectoryPath . '/symfony/twig-bridge/Resources/views/Form',
        ]));

        // locale could be dependent on system languages and the current locale the site is browsed with
        $locale = 'en';
        $translator = new Translator($locale);
        $translator->addResource('xlf', $vendorDirectoryPath . '/symfony/form/Resources/translations/validators.' . $locale . '.xlf', $locale, 'validators');
        $translator->addResource('xlf', $vendorDirectoryPath . '/symfony/validator/Resources/translations/validators.' . $locale . '.xlf', $locale, 'validators');
        // Custom resources can be added here. Resources that are placed in Resources/Private/Language e.g.
        $translator->addLoader('xlf', new XliffFileLoader());

        $validatorBuilder = Validation::createValidatorBuilder();
        $validatorBuilder->setTranslator($translator);
        $validatorBuilder->setTranslationDomain('validators');
        $this->validator = $validatorBuilder->getValidator();

        $this->twig->addExtension(new FormExtension());
        $this->twig->addExtension(new TranslationExtension($translator));

        // form_div_layout.html.twig is the default layout shipped with symfony/twig-bridge
        $formEngine = new TwigRendererEngine(['form_div_layout.html.twig'], $this->twig);

        $this->twig->addRuntimeLoader(new FactoryRuntimeLoader([
            FormRenderer::class => function () use ($formEngine) {
                return new FormRenderer($formEngine);
            },
        ]));
    }

    /**
     * @return string
     * @throws \TYPO3\CMS\Extbase\Mvc\Exception\StopActionException
     * @throws \TYPO3\CMS\Extbase\Mvc\Exception\UnsupportedRequestTypeException
     * @throws \Twig_Error_Loader
     * @throws \Twig_Error_Runtime
     * @throws \Twig_Error_Syntax
     */
    public function renderAction(): string
    {
        $enquiry = new Enquiry();

        $formFactoryBuilder = Forms::createFormFactoryBuilder();
        $formFactoryBuilder->addExtension(new ValidatorExtension($this->validator));
        $formFactoryBuilder->addExtension(new CsrfExtension(new CsrfTokenManager()));

        $formBuilder = $formFactoryBuilder->getFormFactory()->createBuilder(FormType::class, $enquiry);
        $formBuilder
            ->add('name', TextType::class, [
                'attr' => ['id' => 'formName'],
                'constraints' => [
                    new NotBlank()
                ]
            ])
            ->add('email', TextType::class, [
                'constraints' => [
                    new NotBlank()
                ]
            ])
            ->add('message', TextareaType::class, [
                'constraints' => [
                    new NotBlank()
                ]
            ])
            ->add('submit', SubmitType::class, [ 'label' => 'Submit' ]);

        $form = $formBuilder->getForm();

        $form->handleRequest();

        if ($form->isSubmitted() && $form->isValid()) {
            // handle the form data here

            $this->redirect('success');
            exit;
        }

        return $this->twig->render('form.html.twig', [
            'form'=> $form->createView(),
            'errors' => $form->getErrors(true, true)
        ]);
    }

    /**
     * @return string
     * @throws \Twig_Error_Loader
     * @throws \Twig_Error_Runtime
     * @throws \Twig_Error_Syntax
     */
    public function successAction(): string
    {
        return $this->twig->render('success.html.twig');
    }
}
