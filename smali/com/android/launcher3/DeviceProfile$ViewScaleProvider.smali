.class public interface abstract Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DeviceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewScaleProvider"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract getScaleFromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;
    .param p1    # Lcom/android/launcher3/model/data/ItemInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
