.class public Landroidx/work/impl/constraints/controllers/NetworkUnmeteredController;
.super Landroidx/work/impl/constraints/controllers/ConstraintController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/impl/constraints/controllers/ConstraintController<",
        "Landroidx/work/impl/constraints/NetworkState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/impl/utils/taskexecutor/TaskExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2}, Landroidx/work/impl/constraints/trackers/Trackers;->getInstance(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)Landroidx/work/impl/constraints/trackers/Trackers;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/work/impl/constraints/trackers/Trackers;->getNetworkStateTracker()Landroidx/work/impl/constraints/trackers/NetworkStateTracker;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/work/impl/constraints/controllers/ConstraintController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    return-void
.end method


# virtual methods
.method hasConstraint(Landroidx/work/impl/model/WorkSpec;)Z
    .locals 1
    .param p1    # Landroidx/work/impl/model/WorkSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {p0}, Landroidx/work/Constraints;->getRequiredNetworkType()Landroidx/work/NetworkType;

    move-result-object p0

    sget-object v0, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    if-eq p0, v0, :cond_1

    iget-object p0, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {p0}, Landroidx/work/Constraints;->getRequiredNetworkType()Landroidx/work/NetworkType;

    move-result-object p0

    sget-object p1, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    if-ne p0, p1, :cond_0

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

.method isConstrained(Landroidx/work/impl/constraints/NetworkState;)Z
    .locals 0
    .param p1    # Landroidx/work/impl/constraints/NetworkState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/work/impl/constraints/NetworkState;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroidx/work/impl/constraints/NetworkState;->isMetered()Z

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

.method bridge synthetic isConstrained(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroidx/work/impl/constraints/NetworkState;

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/controllers/NetworkUnmeteredController;->isConstrained(Landroidx/work/impl/constraints/NetworkState;)Z

    move-result p0

    return p0
.end method
