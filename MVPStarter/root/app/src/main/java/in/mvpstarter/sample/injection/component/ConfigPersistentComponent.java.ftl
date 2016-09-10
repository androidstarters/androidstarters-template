package ${packageName}.injection.component;

import dagger.Component;
import ${packageName}.injection.ConfigPersistent;
import ${packageName}.injection.module.ActivityModule;
import ${packageName}.injection.module.FragmentModule;
import ${packageName}.ui.base.BaseActivity;
import ${packageName}.ui.base.BaseFragment;

/**
 * A dagger component that will live during the lifecycle of an Activity or Fragment but it won't
 * be destroy during configuration changes. Check {@link BaseActivity} and {@link BaseFragment} to
 * see how this components survives configuration changes.
 * Use the {@link ConfigPersistent} scope to annotate dependencies that need to survive
 * configuration changes (for example Presenters).
 */
@ConfigPersistent
@Component(dependencies = ApplicationComponent.class)
public interface ConfigPersistentComponent {

    ActivityComponent activityComponent(ActivityModule activityModule);

    FragmentComponent fragmentComponent(FragmentModule fragmentModule);

}
