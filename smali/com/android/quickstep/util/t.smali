.class public final synthetic Lcom/android/quickstep/util/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Ljava/util/function/Supplier;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Landroid/content/Context;

.field public final synthetic j:Landroid/graphics/Rect;

.field public final synthetic k:Landroid/content/Intent;

.field public final synthetic l:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Rect;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/t;->g:Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/android/quickstep/util/t;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/quickstep/util/t;->i:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/quickstep/util/t;->j:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/quickstep/util/t;->k:Landroid/content/Intent;

    iput-object p6, p0, Lcom/android/quickstep/util/t;->l:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/quickstep/util/t;->g:Ljava/util/function/Supplier;

    iget-object v1, p0, Lcom/android/quickstep/util/t;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/quickstep/util/t;->i:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/quickstep/util/t;->j:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/quickstep/util/t;->k:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/quickstep/util/t;->l:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/android/quickstep/util/ImageActionUtils;->e(Ljava/util/function/Supplier;Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Rect;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method
