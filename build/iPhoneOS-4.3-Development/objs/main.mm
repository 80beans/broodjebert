#import <UIKit/UIKit.h>

extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_4E1A0B68848843B28B4A5B41BBD1F958(void *, void *);
void MREP_D83AF7A2B1414E9EBBBE2756F183FAC3(void *, void *);
void MREP_94D8188624904FAB8AC5023FCA0D7FEF(void *, void *);
void MREP_8A20CF6D90B84F61ABC75A68A483CE84(void *, void *);
}
int
main(int argc, char **argv)
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    const char *progname = argv[0];
    ruby_init();
    ruby_init_loadpath();
    ruby_script(progname);
    int retval = 0;
    try {
        void *self = rb_vm_top_self();
MREP_4E1A0B68848843B28B4A5B41BBD1F958(self, 0);
MREP_D83AF7A2B1414E9EBBBE2756F183FAC3(self, 0);
MREP_94D8188624904FAB8AC5023FCA0D7FEF(self, 0);
MREP_8A20CF6D90B84F61ABC75A68A483CE84(self, 0);
        retval = UIApplicationMain(argc, argv, nil, @"AppDelegate");
        rb_exit(retval);
    }
    catch (...) {
	rb_rb2oc_exc_handler();
    }
    [pool release];
    return retval;
}
