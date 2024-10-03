.class public final synthetic Lcom/android/launcher3/graphics/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/graphics/PreloadIconDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/PreloadIconDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/i;->g:Lcom/android/launcher3/graphics/PreloadIconDrawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/i;->g:Lcom/android/launcher3/graphics/PreloadIconDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
