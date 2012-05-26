using Nancy;
using Nancy.Conventions;
using Willog.Services;

namespace Willog
{
    public class Bootstrapper : DefaultNancyBootstrapper
    {
        protected override void ConfigureConventions(NancyConventions conventions)
        {
            base.ConfigureConventions(conventions);
            conventions.StaticContentsConventions.Add(StaticContentConventionBuilder.AddDirectory("/assets", @"/Assets/"));
        }

        protected override void ApplicationStartup(TinyIoC.TinyIoCContainer container, Nancy.Bootstrapper.IPipelines pipelines)
        {
            base.ApplicationStartup(container, pipelines);
            container.Register<IDBFactory, DBFactory>().AsSingleton();

        }
    }
}