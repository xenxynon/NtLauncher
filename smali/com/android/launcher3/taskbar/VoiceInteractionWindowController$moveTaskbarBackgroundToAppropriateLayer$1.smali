.class final Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$1;
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
.field final synthetic $onWindowsSynchronized:Ly5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/a<",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;Ly5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;",
            "Ly5/a<",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$1;->this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$1;->$onWindowsSynchronized:Ly5/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$1;->invoke()V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    sget-object v0, Lg0/k;->a:Lg0/k;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$1;->this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->access$getSeparateWindowForTaskbarBackground$p(Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;)Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$1;->this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->getContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v2

    const-string v3, "context.dragLayer"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$1;->$onWindowsSynchronized:Ly5/a;

    invoke-virtual {v0, v1, v2, p0}, Lg0/k;->c(Landroid/view/View;Landroid/view/View;Ly5/a;)V

    return-void
.end method
