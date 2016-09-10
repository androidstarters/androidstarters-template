package ${packageName}.injection.component;

import dagger.Subcomponent;
import ${packageName}.injection.PerActivity;
import ${packageName}.injection.module.ActivityModule;
import ${packageName}.ui.base.BaseActivity;
import ${packageName}.ui.detail.DetailActivity;
import ${packageName}.ui.main.MainActivity;

@PerActivity
@Subcomponent(modules = ActivityModule.class)
public interface ActivityComponent {
    void inject(BaseActivity baseActivity);

    void inject(MainActivity mainActivity);

    void inject(DetailActivity detailActivity);
}
