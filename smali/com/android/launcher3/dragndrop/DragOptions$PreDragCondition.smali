.class public interface abstract Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dragndrop/DragOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreDragCondition"
.end annotation


# virtual methods
.method public getDragOffset()Landroid/graphics/Point;
    .locals 1

    new-instance p0, Landroid/graphics/Point;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public abstract onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V
.end method

.method public abstract onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
.end method

.method public abstract shouldStartDrag(D)Z
.end method
