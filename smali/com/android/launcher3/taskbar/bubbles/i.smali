.class public final synthetic Lcom/android/launcher3/taskbar/bubbles/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

.field public final synthetic h:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/i;->g:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/i;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/i;->g:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/i;->h:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->b(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;Ljava/util/List;)V

    return-void
.end method
