.class public final synthetic Lcom/android/wm/shell/bubbles/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic g:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/d;->g:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/d;->g:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->a(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
