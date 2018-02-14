using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Agile_Project.Startup))]
namespace Agile_Project
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
