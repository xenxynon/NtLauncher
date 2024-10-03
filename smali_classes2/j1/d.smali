.class final Lj1/d;
.super Lj1/m;
.source "SourceFile"


# static fields
.field private static p:Lj1/d;


# instance fields
.field private m:Li1/c;

.field private n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lj1/a;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x21

    invoke-direct {p0, p1, v0, p2, p3}, Lj1/m;-><init>(Landroid/content/Context;ILandroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method static g(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)Lj1/d;
    .locals 2

    sget-object v0, Lj1/d;->p:Lj1/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj1/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lj1/m;->a()V

    const/4 v0, 0x0

    sput-object v0, Lj1/d;->p:Lj1/d;

    :cond_0
    sget-object v0, Lj1/d;->p:Lj1/d;

    if-nez v0, :cond_1

    new-instance v0, Lj1/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lj1/d;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    sput-object v0, Lj1/d;->p:Lj1/d;

    :cond_1
    sget-object p0, Lj1/d;->p:Lj1/d;

    return-object p0
.end method

.method private final k()V
    .locals 1

    iget-boolean v0, p0, Lj1/d;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj1/d;->m:Li1/c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj1/m;->a()V

    :cond_0
    return-void
.end method

.method private final l(Li1/c;)V
    .locals 0

    iput-object p1, p0, Lj1/d;->m:Li1/c;

    invoke-direct {p0}, Lj1/d;->m()Lj1/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lj1/d;->m:Li1/c;

    invoke-virtual {p1, p0}, Lj1/a;->a(Li1/c;)V

    :cond_0
    return-void
.end method

.method private final m()Lj1/a;
    .locals 0

    iget-object p0, p0, Lj1/d;->n:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj1/a;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final h(Lj1/a;)Li1/c;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lj1/d;->n:Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lj1/d;->m:Li1/c;

    return-object p0
.end method

.method public final i(Z)V
    .locals 0

    iput-boolean p1, p0, Lj1/d;->o:Z

    invoke-direct {p0}, Lj1/d;->k()V

    return-void
.end method

.method public final j(Lj1/a;Z)V
    .locals 1

    invoke-direct {p0}, Lj1/d;->m()Lj1/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lj1/d;->n:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lj1/m;->a()V

    sget-object p2, Lj1/d;->p:Lj1/d;

    if-ne p2, p0, :cond_0

    sput-object p1, Lj1/d;->p:Lj1/d;

    :cond_0
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p2}, Li1/b;->S(Landroid/os/IBinder;)Li1/c;

    move-result-object p1

    invoke-direct {p0, p1}, Lj1/d;->l(Li1/c;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj1/d;->l(Li1/c;)V

    invoke-direct {p0}, Lj1/d;->k()V

    return-void
.end method
