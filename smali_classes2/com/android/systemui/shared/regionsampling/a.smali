.class public final synthetic Lcom/android/systemui/shared/regionsampling/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/systemui/shared/regionsampling/RegionSampler;

.field public final synthetic h:Landroid/graphics/RectF;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/regionsampling/RegionSampler;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/regionsampling/a;->g:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    iput-object p2, p0, Lcom/android/systemui/shared/regionsampling/a;->h:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/regionsampling/a;->g:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/a;->h:Landroid/graphics/RectF;

    invoke-static {v0, p0}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->a(Lcom/android/systemui/shared/regionsampling/RegionSampler;Landroid/graphics/RectF;)V

    return-void
.end method
