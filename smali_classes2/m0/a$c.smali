.class final Lm0/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/hardware/display/DisplayManager;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private final d:Lm0/a$c;

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ln0/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo0/h;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lo0/h;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lm0/d;Landroid/content/Context;Ln0/b;Ljava/util/concurrent/Executor;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/hardware/display/DisplayManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lm0/a$c;->d:Lm0/a$c;

    iput-object p7, p0, Lm0/a$c;->a:Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lm0/a$c;->b:Landroid/content/Context;

    iput-object p5, p0, Lm0/a$c;->c:Landroid/os/Handler;

    invoke-direct/range {p0 .. p8}, Lm0/a$c;->c(Lm0/d;Landroid/content/Context;Ln0/b;Ljava/util/concurrent/Executor;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/hardware/display/DisplayManager;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lm0/d;Landroid/content/Context;Ln0/b;Ljava/util/concurrent/Executor;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/hardware/display/DisplayManager;Ljava/lang/String;Lm0/a$a;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lm0/a$c;-><init>(Lm0/d;Landroid/content/Context;Ln0/b;Ljava/util/concurrent/Executor;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/hardware/display/DisplayManager;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lm0/d;Landroid/content/Context;Ln0/b;Ljava/util/concurrent/Executor;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/hardware/display/DisplayManager;Ljava/lang/String;)V
    .locals 0

    invoke-static {p3}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object p2

    iput-object p2, p0, Lm0/a$c;->e:Ljavax/inject/Provider;

    invoke-static {p8}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object p2

    iput-object p2, p0, Lm0/a$c;->f:Ljavax/inject/Provider;

    invoke-static {p2}, Lt0/a;->a(Ljavax/inject/Provider;)Lt0/a;

    move-result-object p2

    iput-object p2, p0, Lm0/a$c;->g:Ljavax/inject/Provider;

    invoke-static {p1}, Lm0/f;->a(Lm0/d;)Lm0/f;

    move-result-object p2

    iput-object p2, p0, Lm0/a$c;->h:Ljavax/inject/Provider;

    invoke-static {p4}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object p2

    iput-object p2, p0, Lm0/a$c;->i:Ljavax/inject/Provider;

    iget-object p3, p0, Lm0/a$c;->h:Ljavax/inject/Provider;

    invoke-static {p3, p2}, Lo0/i;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lo0/i;

    move-result-object p2

    iput-object p2, p0, Lm0/a$c;->j:Ljavax/inject/Provider;

    iget-object p3, p0, Lm0/a$c;->e:Ljavax/inject/Provider;

    iget-object p4, p0, Lm0/a$c;->g:Ljavax/inject/Provider;

    invoke-static {p1, p3, p4, p2}, Lm0/e;->a(Lm0/d;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lm0/e;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lm0/a$c;->k:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public a()Lq0/e;
    .locals 3

    new-instance v0, Lq0/e;

    iget-object v1, p0, Lm0/a$c;->a:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lm0/a$c;->b:Landroid/content/Context;

    iget-object p0, p0, Lm0/a$c;->c:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p0}, Lq0/e;-><init>(Landroid/hardware/display/DisplayManager;Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method

.method public b()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lo0/h;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lm0/a$c;->k:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method
