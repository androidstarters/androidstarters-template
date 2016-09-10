package ${packageName}.common.injection.component;

import javax.inject.Singleton;

import dagger.Component;
import ${packageName}.common.injection.module.ApplicationTestModule;
import ${packageName}.injection.component.ApplicationComponent;

@Singleton
@Component(modules = ApplicationTestModule.class)
public interface TestComponent extends ApplicationComponent {

}