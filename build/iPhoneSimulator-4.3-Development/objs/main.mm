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
void MREP_8090B5EE20C24C5DBC831ABF0D2C4729(void *, void *);
void MREP_EDE37F41441340488AF73ED27A50DB3A(void *, void *);
void MREP_FB936C5C23C54116A19A051B94C3F169(void *, void *);
void MREP_5A233ECD73DF4F18B4D0091668600EC5(void *, void *);
void MREP_67067AF6D58B41C9A71037C75388883E(void *, void *);
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
MREP_8090B5EE20C24C5DBC831ABF0D2C4729(self, 0);
MREP_EDE37F41441340488AF73ED27A50DB3A(self, 0);
MREP_FB936C5C23C54116A19A051B94C3F169(self, 0);
MREP_5A233ECD73DF4F18B4D0091668600EC5(self, 0);
MREP_67067AF6D58B41C9A71037C75388883E(self, 0);
        retval = UIApplicationMain(argc, argv, nil, @"AppDelegate");
        rb_exit(retval);
    }
    catch (...) {
	rb_rb2oc_exc_handler();
    }
    [pool release];
    return retval;
}
