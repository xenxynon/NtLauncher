.class Lcom/android/wm/shell/common/split/DividerView$d;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/common/split/DividerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic g:Lcom/android/wm/shell/common/split/DividerView;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/common/split/DividerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$d;->g:Lcom/android/wm/shell/common/split/DividerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/common/split/DividerView;Lcom/android/wm/shell/common/split/DividerView$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/DividerView$d;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView$d;->g:Lcom/android/wm/shell/common/split/DividerView;

    invoke-static {p0}, Lcom/android/wm/shell/common/split/DividerView;->c(Lcom/android/wm/shell/common/split/DividerView;)Lz0/a;

    const/4 p0, 0x1

    return p0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x1

    return p0
.end method
