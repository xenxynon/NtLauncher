.class public final Lq2/m$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq2/m;->completeAddCardWidget(ILcom/android/launcher3/model/data/ItemInfo;Lcom/nothing/cardhost/e;Lcom/nothing/launcher/card/CardWidgetProviderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lq2/m;

.field final synthetic h:Lcom/nothing/launcher/card/r;

.field final synthetic i:Lcom/android/launcher3/CellLayout;


# direct methods
.method constructor <init>(Lq2/m;Lcom/nothing/launcher/card/r;Lcom/android/launcher3/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lq2/m$d;->g:Lq2/m;

    iput-object p2, p0, Lq2/m$d;->h:Lcom/nothing/launcher/card/r;

    iput-object p3, p0, Lq2/m$d;->i:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/launcher3/LauncherState;)V
    .locals 3

    const-string v0, "finalState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lq2/m$d;->g:Lq2/m;

    invoke-static {v0}, Lq2/m;->access$getMPrevLauncherState$p$s-993110138(Lq2/m;)Lcom/android/launcher3/LauncherState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->W:Lcom/nothing/launcher/card/CardWidgetResizeFrame$a;

    iget-object v0, p0, Lq2/m$d;->h:Lcom/nothing/launcher/card/r;

    iget-object v1, p0, Lq2/m$d;->i:Lcom/android/launcher3/CellLayout;

    const-string v2, "cellLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/nothing/launcher/card/CardWidgetResizeFrame$a;->b(Lcom/nothing/launcher/card/r;Lcom/android/launcher3/CellLayout;)V

    iget-object p1, p0, Lq2/m$d;->g:Lq2/m;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lq2/m$d;->a(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
