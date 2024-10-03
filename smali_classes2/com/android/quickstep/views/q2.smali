.class public final synthetic Lcom/android/quickstep/views/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/q2;->a:Lcom/android/quickstep/views/TaskView;

    return-void
.end method


# virtual methods
.method public final updateBorderBounds(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/q2;->a:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView;->updateBorderBounds(Landroid/graphics/Rect;)V

    return-void
.end method
