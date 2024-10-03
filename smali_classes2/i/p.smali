.class public final synthetic Li/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/icons/BitmapRenderer;


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;

.field public final synthetic b:F

.field public final synthetic c:Landroid/graphics/Paint;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;FLandroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/p;->a:Landroid/graphics/Bitmap;

    iput p2, p0, Li/p;->b:F

    iput-object p3, p0, Li/p;->c:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Li/p;->a:Landroid/graphics/Bitmap;

    iget v1, p0, Li/p;->b:F

    iget-object p0, p0, Li/p;->c:Landroid/graphics/Paint;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->b(Landroid/graphics/Bitmap;FLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    return-void
.end method
