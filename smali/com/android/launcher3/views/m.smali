.class public final synthetic Lcom/android/launcher3/views/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/views/FloatingIconView;

.field public final synthetic h:Z

.field public final synthetic i:Lcom/android/launcher3/dragndrop/DragLayer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/FloatingIconView;ZLcom/android/launcher3/dragndrop/DragLayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/m;->g:Lcom/android/launcher3/views/FloatingIconView;

    iput-boolean p2, p0, Lcom/android/launcher3/views/m;->h:Z

    iput-object p3, p0, Lcom/android/launcher3/views/m;->i:Lcom/android/launcher3/dragndrop/DragLayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/m;->g:Lcom/android/launcher3/views/FloatingIconView;

    iget-boolean v1, p0, Lcom/android/launcher3/views/m;->h:Z

    iget-object p0, p0, Lcom/android/launcher3/views/m;->i:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/views/FloatingIconView;->d(Lcom/android/launcher3/views/FloatingIconView;ZLcom/android/launcher3/dragndrop/DragLayer;)V

    return-void
.end method
