.class public final synthetic Lcom/android/launcher3/taskbar/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarDragController$TaskbarReturnPropertiesListener;


# instance fields
.field public final synthetic a:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic b:Landroid/view/SurfaceControl;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/r1;->a:Landroid/view/SurfaceControl$Transaction;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/r1;->b:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public final updateDragShadow(FFFF)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/r1;->a:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/r1;->b:Landroid/view/SurfaceControl;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/taskbar/TaskbarDragController;->g(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFFF)V

    return-void
.end method
