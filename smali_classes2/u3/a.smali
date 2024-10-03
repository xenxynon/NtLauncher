.class public final Lu3/a;
.super Lu3/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu3/b<",
        "Lv3/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lv3/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lu3/b;-><init>()V

    new-instance v0, Lv3/c;

    invoke-direct {v0, p1}, Lv3/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu3/a;->a:Lv3/c;

    return-void
.end method


# virtual methods
.method public a()Lv3/c;
    .locals 0

    iget-object p0, p0, Lu3/a;->a:Lv3/c;

    return-object p0
.end method

.method public b(Landroid/content/pm/LauncherActivityInfo;)V
    .locals 0

    iget-object p0, p0, Lu3/a;->a:Lv3/c;

    invoke-virtual {p0, p1}, Lv3/c;->o(Landroid/content/pm/LauncherActivityInfo;)V

    return-void
.end method

.method public c(Lcom/android/launcher3/icons/BaseIconFactory;)V
    .locals 1

    const-string v0, "iconFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lu3/a;->a:Lv3/c;

    invoke-virtual {p0, p1}, Lv3/c;->k(Lcom/android/launcher3/icons/BaseIconFactory;)V

    return-void
.end method

.method public d(Lcom/android/launcher3/icons/IconProvider;)V
    .locals 1

    const-string v0, "iconProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lu3/a;->a:Lv3/c;

    invoke-virtual {p0, p1}, Lv3/c;->l(Lcom/android/launcher3/icons/IconProvider;)V

    return-void
.end method

.method public e(I)V
    .locals 0

    iget-object p0, p0, Lu3/a;->a:Lv3/c;

    invoke-virtual {p0, p1}, Lv3/c;->m(I)V

    return-void
.end method

.method public f(Z)V
    .locals 0

    iget-object p0, p0, Lu3/a;->a:Lv3/c;

    invoke-virtual {p0, p1}, Lv3/c;->j(Z)V

    return-void
.end method

.method public g(Z)V
    .locals 0

    iget-object p0, p0, Lu3/a;->a:Lv3/c;

    invoke-virtual {p0, p1}, Lv3/c;->n(Z)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "appName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lu3/a;->a:Lv3/c;

    invoke-virtual {p0, p1}, Lv3/c;->p(Ljava/lang/String;)V

    return-void
.end method

.method public i(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lu3/a;->a:Lv3/c;

    invoke-virtual {p0, p1}, Lv3/c;->q(Landroid/content/ComponentName;)V

    return-void
.end method

.method public j(Landroid/os/UserHandle;)V
    .locals 0

    iget-object p0, p0, Lu3/a;->a:Lv3/c;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setUser(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    return-void
.end method
