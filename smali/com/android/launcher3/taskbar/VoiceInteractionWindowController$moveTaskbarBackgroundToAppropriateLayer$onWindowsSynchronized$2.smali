.class final Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$2;
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

    iput-object p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$2;->this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$2;->invoke()V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$2;->this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->getContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$2;->this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->access$getSeparateWindowForTaskbarBackground$p(Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;)Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->removeWindowView(Landroid/view/View;)V

    return-void
.end method
