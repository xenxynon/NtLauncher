.class public Lg0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/b$d;


# instance fields
.field private final delegate:Lg0/b$d;


# direct methods
.method public constructor <init>(Lg0/b$d;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/c;->delegate:Lg0/b$d;

    return-void
.end method


# virtual methods
.method public createAnimatorState()Lg0/f$e;
    .locals 0

    iget-object p0, p0, Lg0/c;->delegate:Lg0/b$d;

    invoke-interface {p0}, Lg0/f$c;->createAnimatorState()Lg0/f$e;

    move-result-object p0

    return-object p0
.end method

.method public getLaunchContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lg0/c;->delegate:Lg0/b$d;

    invoke-interface {p0}, Lg0/f$c;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public getOpeningWindowSyncView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lg0/c;->delegate:Lg0/b$d;

    invoke-interface {p0}, Lg0/f$c;->getOpeningWindowSyncView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onLaunchAnimationCancelled(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lg0/c;->delegate:Lg0/b$d;

    invoke-interface {p0, p1}, Lg0/b$d;->onLaunchAnimationCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onLaunchAnimationEnd(Z)V
    .locals 0

    iget-object p0, p0, Lg0/c;->delegate:Lg0/b$d;

    invoke-interface {p0, p1}, Lg0/f$c;->onLaunchAnimationEnd(Z)V

    return-void
.end method

.method public onLaunchAnimationProgress(Lg0/f$e;FF)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lg0/c;->delegate:Lg0/b$d;

    invoke-interface {p0, p1, p2, p3}, Lg0/f$c;->onLaunchAnimationProgress(Lg0/f$e;FF)V

    return-void
.end method

.method public onLaunchAnimationStart(Z)V
    .locals 0

    iget-object p0, p0, Lg0/c;->delegate:Lg0/b$d;

    invoke-interface {p0, p1}, Lg0/f$c;->onLaunchAnimationStart(Z)V

    return-void
.end method
