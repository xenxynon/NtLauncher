.class public final Ly4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li6/m0;


# static fields
.field public static final h:Ly4/e;


# instance fields
.field private final synthetic g:Li6/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly4/e;

    invoke-direct {v0}, Ly4/e;-><init>()V

    sput-object v0, Ly4/e;->h:Ly4/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Li6/r2;->b(Li6/v1;ILjava/lang/Object;)Li6/z;

    move-result-object v0

    invoke-static {}, Li6/b1;->b()Li6/i0;

    move-result-object v1

    invoke-interface {v0, v1}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object v0

    invoke-static {v0}, Li6/n0;->a(Lq5/g;)Li6/m0;

    move-result-object v0

    iput-object v0, p0, Ly4/e;->g:Li6/m0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "used"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Li4/c;->b:Li4/c$b;

    invoke-virtual {v0}, Li4/c$b;->a()Li4/c;

    move-result-object v0

    const-string v1, "launcher_appshortcut"

    invoke-virtual {v0, v1, p0}, Li4/c;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    sget-object p0, Ly4/f;->h:Ly4/f;

    invoke-virtual {p0}, Ly4/f;->b()V

    return-void
.end method

.method public final b()V
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "used"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Li4/c;->b:Li4/c$b;

    invoke-virtual {v0}, Li4/c$b;->a()Li4/c;

    move-result-object v0

    const-string v1, "launcher_appshortcut"

    invoke-virtual {v0, v1, p0}, Li4/c;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "used"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Li4/c;->b:Li4/c$b;

    invoke-virtual {v0}, Li4/c$b;->a()Li4/c;

    move-result-object v0

    const-string v1, "launcher_appshortcut"

    invoke-virtual {v0, v1, p0}, Li4/c;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method public final d(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1

    const-string p0, "itemInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lb3/m;->i(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 p1, 0x2

    const-string v0, "used"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Li4/c;->b:Li4/c$b;

    invoke-virtual {p1}, Li4/c$b;->a()Li4/c;

    move-result-object p1

    const-string v0, "launcher_appshortcut"

    invoke-virtual {p1, v0, p0}, Li4/c;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public final e(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x5

    const-string v1, "used"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Li4/c;->b:Li4/c$b;

    invoke-virtual {v0}, Li4/c$b;->a()Li4/c;

    move-result-object v0

    const-string v1, "launcher_appshortcut"

    invoke-virtual {v0, v1, p0}, Li4/c;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    :cond_0
    sget-object p0, Ly4/f;->h:Ly4/f;

    invoke-virtual {p0, p1}, Ly4/f;->c(Z)V

    return-void
.end method

.method public final f()V
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "used"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Li4/c;->b:Li4/c$b;

    invoke-virtual {v0}, Li4/c$b;->a()Li4/c;

    move-result-object v0

    const-string v1, "launcher_appshortcut"

    invoke-virtual {v0, v1, p0}, Li4/c;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    sget-object p0, Ly4/f;->h:Ly4/f;

    invoke-virtual {p0}, Ly4/f;->f()V

    return-void
.end method

.method public getCoroutineContext()Lq5/g;
    .locals 0

    iget-object p0, p0, Ly4/e;->g:Li6/m0;

    invoke-interface {p0}, Li6/m0;->getCoroutineContext()Lq5/g;

    move-result-object p0

    return-object p0
.end method
