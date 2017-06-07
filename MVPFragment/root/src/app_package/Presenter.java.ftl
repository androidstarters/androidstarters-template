package ${packageName};

import ${applicationPackage}.features.base.BasePresenter;
import ${applicationPackage}.injection.annotation.ConfigPersistent;
import javax.inject.Inject;

@ConfigPersistent
public class ${presenterName} extends BasePresenter<${viewName}> {

    @Inject
    public ${presenterName}() {
    }

}
