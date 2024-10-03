.class public abstract Lcom/android/wm/shell/pip/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/c$a;,
        Lcom/android/wm/shell/pip/c$b;
    }
.end annotation


# instance fields
.field protected a:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
.end method

.method public b()Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/c;->a:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public abstract c(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)V
.end method
