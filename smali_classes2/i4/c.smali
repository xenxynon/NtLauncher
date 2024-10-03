.class public final Li4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li4/c$b;
    }
.end annotation


# static fields
.field public static final b:Li4/c$b;

.field private static final c:Ln5/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln5/e<",
            "Li4/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Li4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li4/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li4/c$b;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Li4/c;->b:Li4/c$b;

    sget-object v0, Li4/c$a;->g:Li4/c$a;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    sput-object v0, Li4/c;->c:Ln5/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Li4/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "context.applicationContext"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Li4/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Li4/c;->a:Li4/a;

    return-void
.end method

.method public static synthetic a(Li4/a;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Li4/c;->f(Li4/a;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final synthetic b()Ln5/e;
    .locals 1

    sget-object v0, Li4/c;->c:Ln5/e;

    return-object v0
.end method

.method private static final f(Li4/a;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$eventParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Li4/a;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method


# virtual methods
.method public final c(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "eventParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "OS_Launcher"

    invoke-virtual {p0, v0, p1}, Li4/c;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public final d(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "eventParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "OS_Popview"

    invoke-virtual {p0, v0, p1}, Li4/c;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public final e(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Li4/c;->a:Li4/a;

    if-eqz p0, :cond_0

    sget-object v0, Ly2/c;->a:Ly2/c;

    invoke-virtual {v0}, Ly2/c;->h()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Li4/b;

    invoke-direct {v1, p0, p1, p2}, Li4/b;-><init>(Li4/a;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
