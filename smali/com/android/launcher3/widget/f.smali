.class public final synthetic Lcom/android/launcher3/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/f;->g:Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/f;->g:Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->a(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
