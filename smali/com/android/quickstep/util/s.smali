.class public final synthetic Lcom/android/quickstep/util/s;
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


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Rect;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/s;->g:Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/android/quickstep/util/s;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/quickstep/util/s;->i:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/quickstep/util/s;->j:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/quickstep/util/s;->k:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/util/s;->g:Ljava/util/function/Supplier;

    iget-object v1, p0, Lcom/android/quickstep/util/s;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/quickstep/util/s;->i:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/quickstep/util/s;->j:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/quickstep/util/s;->k:Landroid/content/Intent;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/quickstep/util/ImageActionUtils;->b(Ljava/util/function/Supplier;Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Rect;Landroid/content/Intent;)V

    return-void
.end method
