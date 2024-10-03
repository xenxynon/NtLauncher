.class final Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$1;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->moveTaskbarBackgroundToAppropriateLayer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$1;->this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$1;->invoke()V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$1;->this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->access$getControllers$p(Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "controllers"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->setIsBackgroundDrawnElsewhere(Z)V

    return-void
.end method
