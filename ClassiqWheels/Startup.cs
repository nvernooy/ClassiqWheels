using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ClassiqWheels.Startup))]
namespace ClassiqWheels
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
