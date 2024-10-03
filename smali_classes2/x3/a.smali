.class public final Lx3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/d;
.implements Ls3/f;
.implements Ls3/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx3/a$a;,
        Lx3/a$d;,
        Lx3/a$b;,
        Lx3/a$c;
    }
.end annotation


# static fields
.field public static final k:Lx3/a$a;


# instance fields
.field private final g:Ls3/a;

.field private final h:Landroid/content/Context;

.field private final i:Li6/m0;

.field private volatile j:Lx3/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx3/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx3/a$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lx3/a;->k:Lx3/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Li6/m0;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx3/a;->h:Landroid/content/Context;

    iput-object p2, p0, Lx3/a;->i:Li6/m0;

    new-instance p2, Ls3/a;

    invoke-direct {p2, p1}, Ls3/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lx3/a;->g:Ls3/a;

    invoke-virtual {p0, p0}, Lx3/a;->k(Ls3/d;)V

    invoke-virtual {p0, p0}, Lx3/a;->m(Ls3/f;)V

    invoke-virtual {p0, p0}, Lx3/a;->l(Ls3/e;)V

    return-void
.end method

.method private final j(Lx3/a$d;)V
    .locals 2

    iget-object v0, p0, Lx3/a;->j:Lx3/a$d;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lx3/a$d;->e()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Lx3/a$b;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lx3/a$b;

    invoke-virtual {v1}, Lx3/a$d;->c()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, p1, Lx3/a$c;

    if-nez v1, :cond_2

    :cond_1
    instance-of v1, v0, Lx3/a$c;

    if-eqz v1, :cond_3

    instance-of v1, p1, Lx3/a$b;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lx3/a$b;

    invoke-virtual {v1}, Lx3/a$d;->c()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    new-instance p1, Lx3/a$b;

    invoke-virtual {v0}, Lx3/a$d;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lx3/a$b;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lx3/a;->j:Lx3/a$d;

    return-void

    :cond_3
    iput-object p1, p0, Lx3/a;->j:Lx3/a$d;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lx3/a;->j:Lx3/a$d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lx3/a$d;->a()V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    invoke-virtual {p0}, Lx3/a;->i()Ljava/lang/String;

    move-result-object p0

    const-string v0, "THEMED_ICONS"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lx3/a;->g:Ls3/a;

    invoke-virtual {p0}, Ls3/a;->c()Z

    move-result p0

    return p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lx3/a;->g:Ls3/a;

    invoke-virtual {p0}, Ls3/a;->d()Z

    move-result p0

    return p0
.end method

.method public final e()Z
    .locals 1

    invoke-virtual {p0}, Lx3/a;->i()Ljava/lang/String;

    move-result-object p0

    const-string v0, "THEMED_ICONS_NOTHING"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f()Z
    .locals 1

    invoke-virtual {p0}, Lx3/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lx3/a;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final g()Z
    .locals 1

    invoke-virtual {p0}, Lx3/a;->i()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SYSTEM_ICONS"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final h()Z
    .locals 2

    invoke-virtual {p0}, Lx3/a;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "THEMED_ICONS_NOTHING"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lx3/a;->i()Ljava/lang/String;

    move-result-object p0

    const-string v0, "THEMED_ICONS"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lx3/a;->g:Ls3/a;

    invoke-virtual {p0}, Ls3/a;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final k(Ls3/d;)V
    .locals 1

    const-string v0, "onSelectListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lx3/a;->g:Ls3/a;

    invoke-virtual {p0, p1}, Ls3/a;->h(Ls3/d;)V

    return-void
.end method

.method public final l(Ls3/e;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lx3/a;->g:Ls3/a;

    invoke-virtual {p0, p1}, Ls3/a;->j(Ls3/e;)V

    return-void
.end method

.method public final m(Ls3/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lx3/a;->g:Ls3/a;

    invoke-virtual {p0, p1}, Ls3/a;->i(Ls3/f;)V

    return-void
.end method

.method public final n(Ls3/d;)V
    .locals 1

    const-string v0, "onSelectListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lx3/a;->g:Ls3/a;

    invoke-virtual {p0, p1}, Ls3/a;->k(Ls3/d;)V

    return-void
.end method

.method public final o(Ls3/e;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lx3/a;->g:Ls3/a;

    invoke-virtual {p0, p1}, Ls3/a;->m(Ls3/e;)V

    return-void
.end method

.method public onNewPackSelected(Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lx3/a;->j:Lx3/a$d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lx3/a$d;->g()V

    :cond_0
    return-void
.end method

.method public onNothingIconApplyStatusChanged(Z)V
    .locals 0

    return-void
.end method

.method public onNothingIconForceRenderChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNothingIconForceRenderChanged value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StateController"

    invoke-static {v0, p1}, Ly3/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx3/a;->j:Lx3/a$d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lx3/a$d;->g()V

    :cond_0
    return-void
.end method

.method public final p(Ls3/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lx3/a;->g:Ls3/a;

    invoke-virtual {p0, p1}, Ls3/a;->l(Ls3/f;)V

    return-void
.end method

.method public final q(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "callerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lx3/a;->g:Ls3/a;

    invoke-virtual {p0, p1, p2}, Ls3/a;->n(Landroid/content/Context;Z)Z

    return-void
.end method

.method public final r(Landroid/content/Context;ZZ)Z
    .locals 2

    const-string v0, "callerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lx3/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    const-string p3, "StateController"

    const-string v0, "writeNothingIconPackForceRenderEnable: RefreshForceRenderNothingIconJob was created."

    invoke-static {p3, v0}, Ly3/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lx3/a$c;

    iget-object v0, p0, Lx3/a;->h:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p3, v0, v1, p2}, Lx3/a$c;-><init>(Landroid/content/Context;ZZ)V

    invoke-direct {p0, p3}, Lx3/a;->j(Lx3/a$d;)V

    :cond_0
    iget-object p0, p0, Lx3/a;->g:Ls3/a;

    invoke-virtual {p0, p1, p2}, Ls3/a;->o(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public final s(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    const-string v0, "callerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lx3/a$b;

    iget-object v1, p0, Lx3/a;->h:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lx3/a$b;-><init>(Landroid/content/Context;Z)V

    invoke-direct {p0, v0}, Lx3/a;->j(Lx3/a$d;)V

    iget-object p0, p0, Lx3/a;->g:Ls3/a;

    invoke-virtual {p0, p1, p2}, Ls3/a;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
