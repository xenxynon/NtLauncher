.class public final Lg0/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg0/b$a;->m([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final synthetic b:Lg0/b$d;

.field final synthetic c:Lg0/b$d;

.field final synthetic d:Lg0/b$a;

.field final synthetic e:Landroid/view/IRemoteAnimationFinishedCallback;

.field final synthetic f:Landroid/view/RemoteAnimationTarget;

.field final synthetic g:Landroid/view/RemoteAnimationTarget;


# direct methods
.method constructor <init>(Lg0/b$d;Lg0/b$a;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/RemoteAnimationTarget;Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    iput-object p1, p0, Lg0/b$a$a;->c:Lg0/b$d;

    iput-object p2, p0, Lg0/b$a$a;->d:Lg0/b$a;

    iput-object p3, p0, Lg0/b$a$a;->e:Landroid/view/IRemoteAnimationFinishedCallback;

    iput-object p4, p0, Lg0/b$a$a;->f:Landroid/view/RemoteAnimationTarget;

    iput-object p5, p0, Lg0/b$a$a;->g:Landroid/view/RemoteAnimationTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/b$a$a;->b:Lg0/b$d;

    return-void
.end method


# virtual methods
.method public createAnimatorState()Lg0/f$e;
    .locals 0

    iget-object p0, p0, Lg0/b$a$a;->b:Lg0/b$d;

    invoke-interface {p0}, Lg0/f$c;->createAnimatorState()Lg0/f$e;

    move-result-object p0

    return-object p0
.end method

.method public getLaunchContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lg0/b$a$a;->b:Lg0/b$d;

    invoke-interface {p0}, Lg0/f$c;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public getOpeningWindowSyncView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lg0/b$a$a;->b:Lg0/b$d;

    invoke-interface {p0}, Lg0/f$c;->getOpeningWindowSyncView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public isBelowAnimatingWindow()Z
    .locals 0

    iget-object p0, p0, Lg0/b$a$a;->b:Lg0/b$d;

    invoke-interface {p0}, Lg0/b$d;->isBelowAnimatingWindow()Z

    move-result p0

    return p0
.end method

.method public onLaunchAnimationCancelled(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lg0/b$a$a;->b:Lg0/b$d;

    invoke-interface {p0, p1}, Lg0/b$d;->onLaunchAnimationCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onLaunchAnimationEnd(Z)V
    .locals 2

    iget-object v0, p0, Lg0/b$a$a;->d:Lg0/b$a;

    invoke-static {v0}, Lg0/b$a;->d(Lg0/b$a;)Lg0/b$e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg0/b$e;->onLaunchAnimationEnd()V

    :cond_0
    iget-object v0, p0, Lg0/b$a$a;->e:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lg0/b$a$a;->d:Lg0/b$a;

    invoke-static {v1, v0}, Lg0/b$a;->e(Lg0/b$a;Landroid/view/IRemoteAnimationFinishedCallback;)V

    :cond_1
    iget-object p0, p0, Lg0/b$a$a;->c:Lg0/b$d;

    invoke-interface {p0, p1}, Lg0/f$c;->onLaunchAnimationEnd(Z)V

    return-void
.end method

.method public onLaunchAnimationProgress(Lg0/f$e;FF)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lg0/f$e;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg0/b$a$a;->d:Lg0/b$a;

    iget-object v1, p0, Lg0/b$a$a;->f:Landroid/view/RemoteAnimationTarget;

    invoke-static {v0, v1, p1, p3}, Lg0/b$a;->c(Lg0/b$a;Landroid/view/RemoteAnimationTarget;Lg0/f$e;F)V

    :cond_0
    iget-object v0, p0, Lg0/b$a$a;->g:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lg0/b$a$a;->d:Lg0/b$a;

    invoke-static {v1, v0, p1, p3}, Lg0/b$a;->b(Lg0/b$a;Landroid/view/RemoteAnimationTarget;Lg0/f$e;F)V

    :cond_1
    iget-object v0, p0, Lg0/b$a$a;->d:Lg0/b$a;

    invoke-static {v0}, Lg0/b$a;->d(Lg0/b$a;)Lg0/b$e;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p3}, Lg0/b$e;->b(F)V

    :cond_2
    iget-object p0, p0, Lg0/b$a$a;->c:Lg0/b$d;

    invoke-interface {p0, p1, p2, p3}, Lg0/f$c;->onLaunchAnimationProgress(Lg0/f$e;FF)V

    return-void
.end method

.method public onLaunchAnimationStart(Z)V
    .locals 1

    iget-object v0, p0, Lg0/b$a$a;->d:Lg0/b$a;

    invoke-static {v0}, Lg0/b$a;->d(Lg0/b$a;)Lg0/b$e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg0/b$e;->a()V

    :cond_0
    iget-object p0, p0, Lg0/b$a$a;->c:Lg0/b$d;

    invoke-interface {p0, p1}, Lg0/f$c;->onLaunchAnimationStart(Z)V

    return-void
.end method
