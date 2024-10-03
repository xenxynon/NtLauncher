.class public final synthetic Li/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/icons/BitmapRenderer;


# instance fields
.field public final synthetic a:Landroid/graphics/Picture;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Picture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/r;->a:Landroid/graphics/Picture;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    iget-object p0, p0, Li/r;->a:Landroid/graphics/Picture;

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->c(Landroid/graphics/Picture;Landroid/graphics/Canvas;)V

    return-void
.end method
