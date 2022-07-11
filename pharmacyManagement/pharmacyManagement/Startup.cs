using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(pharmacyManagement.Startup))]
namespace pharmacyManagement
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
