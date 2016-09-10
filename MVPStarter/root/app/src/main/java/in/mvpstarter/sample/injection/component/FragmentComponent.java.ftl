package ${packageName}.injection.component;

import dagger.Subcomponent;
import ${packageName}.injection.PerFragment;
import ${packageName}.injection.module.FragmentModule;

/**
 * This component inject dependencies to all Fragments across the application
 */
@PerFragment
@Subcomponent(modules = FragmentModule.class)
public interface FragmentComponent {

}