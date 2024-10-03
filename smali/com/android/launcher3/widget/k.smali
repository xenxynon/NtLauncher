.class public final synthetic Lcom/android/launcher3/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/widget/WidgetCell;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/WidgetCell;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/k;->g:Lcom/android/launcher3/widget/WidgetCell;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/k;->g:Lcom/android/launcher3/widget/WidgetCell;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/android/launcher3/widget/WidgetCell;->b(Lcom/android/launcher3/widget/WidgetCell;Landroid/graphics/Bitmap;)V

    return-void
.end method
