.class public final synthetic Lcom/android/launcher3/taskbar/bubbles/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

.field public final synthetic h:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/d;->g:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/d;->h:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/d;->g:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/d;->h:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->T(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V

    return-void
.end method
