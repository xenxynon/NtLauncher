.class final Lcom/nothing/launcher/popup/b$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/popup/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Lcom/android/launcher3/statemanager/StateManager<",
        "Lcom/android/launcher3/LauncherState;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/launcher/popup/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nothing/launcher/popup/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nothing/launcher/popup/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/launcher/popup/b<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/launcher/popup/b$b;->g:Lcom/nothing/launcher/popup/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/launcher3/statemanager/StateManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/statemanager/StateManager<",
            "Lcom/android/launcher3/LauncherState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nothing/launcher/popup/b$b;->g:Lcom/nothing/launcher/popup/b;

    invoke-static {v0}, Lcom/nothing/launcher/popup/b;->access$getMActivityContext$p$s1108349065(Lcom/nothing/launcher/popup/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/nothing/launcher/popup/b$b;->g:Lcom/nothing/launcher/popup/b;

    invoke-static {p0}, Lcom/nothing/launcher/popup/b;->access$getMActivityContext$p$s1108349065(Lcom/nothing/launcher/popup/b;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/popup/b$b;->a()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    return-object p0
.end method
