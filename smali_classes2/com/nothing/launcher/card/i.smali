.class public final synthetic Lcom/nothing/launcher/card/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/icons/BitmapRenderer;


# instance fields
.field public final synthetic a:Landroid/graphics/drawable/Drawable;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Lcom/nothing/launcher/card/CardWidgetProviderInfo;

.field public final synthetic h:Lcom/android/launcher3/DeviceProfile;

.field public final synthetic i:F

.field public final synthetic j:Ly5/l;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;IILandroid/content/Context;IILcom/nothing/launcher/card/CardWidgetProviderInfo;Lcom/android/launcher3/DeviceProfile;FLy5/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/card/i;->a:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Lcom/nothing/launcher/card/i;->b:I

    iput p3, p0, Lcom/nothing/launcher/card/i;->c:I

    iput-object p4, p0, Lcom/nothing/launcher/card/i;->d:Landroid/content/Context;

    iput p5, p0, Lcom/nothing/launcher/card/i;->e:I

    iput p6, p0, Lcom/nothing/launcher/card/i;->f:I

    iput-object p7, p0, Lcom/nothing/launcher/card/i;->g:Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    iput-object p8, p0, Lcom/nothing/launcher/card/i;->h:Lcom/android/launcher3/DeviceProfile;

    iput p9, p0, Lcom/nothing/launcher/card/i;->i:F

    iput-object p10, p0, Lcom/nothing/launcher/card/i;->j:Ly5/l;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lcom/nothing/launcher/card/i;->a:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/nothing/launcher/card/i;->b:I

    iget v2, p0, Lcom/nothing/launcher/card/i;->c:I

    iget-object v3, p0, Lcom/nothing/launcher/card/i;->d:Landroid/content/Context;

    iget v4, p0, Lcom/nothing/launcher/card/i;->e:I

    iget v5, p0, Lcom/nothing/launcher/card/i;->f:I

    iget-object v6, p0, Lcom/nothing/launcher/card/i;->g:Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    iget-object v7, p0, Lcom/nothing/launcher/card/i;->h:Lcom/android/launcher3/DeviceProfile;

    iget v8, p0, Lcom/nothing/launcher/card/i;->i:F

    iget-object v9, p0, Lcom/nothing/launcher/card/i;->j:Ly5/l;

    move-object v10, p1

    invoke-static/range {v0 .. v10}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->W(Landroid/graphics/drawable/Drawable;IILandroid/content/Context;IILcom/nothing/launcher/card/CardWidgetProviderInfo;Lcom/android/launcher3/DeviceProfile;FLy5/l;Landroid/graphics/Canvas;)V

    return-void
.end method
