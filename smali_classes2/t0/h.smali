.class public Lt0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/o;
.implements Lm0/o$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt0/h$a;
    }
.end annotation


# static fields
.field public static final Companion:Lt0/h$a;


# instance fields
.field private isReadyToHandleTransition:Z

.field private isTransitionRunning:Z

.field private lastTransitionProgress:F

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm0/o$a;",
            ">;"
        }
    .end annotation
.end field

.field private source:Lm0/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt0/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt0/h$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lt0/h;->Companion:Lt0/h$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lt0/h;-><init>(Lm0/o;ILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Lm0/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt0/h;->listeners:Ljava/util/List;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lt0/h;->lastTransitionProgress:F

    invoke-virtual {p0, p1}, Lt0/h;->setSourceProvider(Lm0/o;)V

    return-void
.end method

.method public synthetic constructor <init>(Lm0/o;ILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lt0/h;-><init>(Lm0/o;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lm0/o$a;

    invoke-virtual {p0, p1}, Lt0/h;->addCallback(Lm0/o$a;)V

    return-void
.end method

.method public addCallback(Lm0/o$a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lt0/h;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lt0/h;->source:Lm0/o;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lt0/b;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lt0/h;->source:Lm0/o;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lm0/o;->destroy()V

    :cond_1
    return-void
.end method

.method public onTransitionFinished()V
    .locals 2

    iget-boolean v0, p0, Lt0/h;->isReadyToHandleTransition:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt0/h;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm0/o$a;

    invoke-interface {v1}, Lm0/o$a;->onTransitionFinished()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lt0/h;->isTransitionRunning:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lt0/h;->lastTransitionProgress:F

    return-void
.end method

.method public onTransitionFinishing()V
    .locals 1

    iget-boolean v0, p0, Lt0/h;->isReadyToHandleTransition:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lt0/h;->listeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/o$a;

    invoke-interface {v0}, Lm0/o$a;->onTransitionFinishing()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTransitionProgress(F)V
    .locals 2

    iget-boolean v0, p0, Lt0/h;->isReadyToHandleTransition:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt0/h;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm0/o$a;

    invoke-interface {v1, p1}, Lm0/o$a;->onTransitionProgress(F)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lt0/h;->lastTransitionProgress:F

    return-void
.end method

.method public onTransitionStarted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt0/h;->isTransitionRunning:Z

    iget-boolean v0, p0, Lt0/h;->isReadyToHandleTransition:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lt0/h;->listeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/o$a;

    invoke-interface {v0}, Lm0/o$a;->onTransitionStarted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lm0/o$a;

    invoke-virtual {p0, p1}, Lt0/h;->removeCallback(Lm0/o$a;)V

    return-void
.end method

.method public removeCallback(Lm0/o$a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lt0/h;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setReadyToHandleTransition(Z)V
    .locals 3

    iget-boolean v0, p0, Lt0/h;->isTransitionRunning:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lt0/h;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm0/o$a;

    invoke-interface {v2}, Lm0/o$a;->onTransitionStarted()V

    goto :goto_0

    :cond_0
    iget v1, p0, Lt0/h;->lastTransitionProgress:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v1, v1, v2

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lt0/h;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm0/o$a;

    iget v2, p0, Lt0/h;->lastTransitionProgress:F

    invoke-interface {v1, v2}, Lm0/o$a;->onTransitionProgress(F)V

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Lt0/h;->isTransitionRunning:Z

    iget-object v0, p0, Lt0/h;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm0/o$a;

    invoke-interface {v1}, Lm0/o$a;->onTransitionFinished()V

    goto :goto_2

    :cond_3
    iput-boolean p1, p0, Lt0/h;->isReadyToHandleTransition:Z

    return-void
.end method

.method public final setSourceProvider(Lm0/o;)V
    .locals 1

    iget-object v0, p0, Lt0/h;->source:Lm0/o;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lt0/b;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lt0/h;->source:Lm0/o;

    invoke-interface {p1, p0}, Lt0/b;->addCallback(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lt0/h;->source:Lm0/o;

    :goto_0
    return-void
.end method
