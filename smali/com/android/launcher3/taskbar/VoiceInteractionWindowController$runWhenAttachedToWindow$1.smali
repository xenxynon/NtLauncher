.class public final Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$runWhenAttachedToWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->runWhenAttachedToWindow(Landroid/view/View;Ly5/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $onAttachedToWindow:Ly5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/a<",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_runWhenAttachedToWindow:Landroid/view/View;

.field final synthetic this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;


# direct methods
.method constructor <init>(Ly5/a;Landroid/view/View;Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/a<",
            "Ln5/t;",
            ">;",
            "Landroid/view/View;",
            "Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$runWhenAttachedToWindow$1;->$onAttachedToWindow:Ly5/a;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$runWhenAttachedToWindow$1;->$this_runWhenAttachedToWindow:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$runWhenAttachedToWindow$1;->this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$runWhenAttachedToWindow$1;->$onAttachedToWindow:Ly5/a;

    invoke-interface {p1}, Ly5/a;->invoke()Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$runWhenAttachedToWindow$1;->$this_runWhenAttachedToWindow:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$runWhenAttachedToWindow$1;->this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->access$setPendingAttachedToWindowListener$p(Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
