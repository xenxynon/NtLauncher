.class public final synthetic Lcom/android/launcher3/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;


# instance fields
.field public final synthetic a:Landroid/graphics/PointF;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/t;->a:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final getScaleFromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/t;->a:Landroid/graphics/PointF;

    invoke-static {p0, p1}, Lcom/android/launcher3/DeviceProfile;->c(Landroid/graphics/PointF;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
