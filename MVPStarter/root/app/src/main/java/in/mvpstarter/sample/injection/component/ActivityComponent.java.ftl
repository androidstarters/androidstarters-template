package ${packageName}.injection.component;

import dagger.Subcomponent;
import ${packageName}.injection.PerActivity;
import ${packageName}.injection.module.ActivityModule;
import ${packageName}.features.base.BaseActivity;
import ${packageName}.features.detail.DetailActivity;
import ${packageName}.features.main.MainActivity;

@PerActivity
@Subcomponent(modules = ActivityModule.class)
public interface ActivityComponent {
    void inject(BaseActivity baseActivity);

    void inject(MainActivity mainActivity);

    void inject(DetailActivity detailActivity);
}
