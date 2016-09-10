package ${packageName}.injection.component;

import android.app.Application;
import android.content.Context;

import javax.inject.Singleton;

import dagger.Component;
import ${packageName}.data.DataManager;
import ${packageName}.data.remote.MvpStarterService;
import ${packageName}.injection.ApplicationContext;
import ${packageName}.injection.module.ApplicationModule;

@Singleton
@Component(modules = ApplicationModule.class)
public interface ApplicationComponent {

    @ApplicationContext
    Context context();

    Application application();

    DataManager dataManager();

    MvpStarterService mvpBoilerplateService();
}
