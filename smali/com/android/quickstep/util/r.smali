.class public final synthetic Lcom/android/quickstep/util/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Ljava/util/function/Supplier;

.field public final synthetic h:Landroid/graphics/RectF;

.field public final synthetic i:Landroid/content/Context;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Landroid/app/prediction/AppTarget;

.field public final synthetic l:Landroid/content/pm/ShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;Landroid/graphics/RectF;Landroid/content/Context;Ljava/lang/String;Landroid/app/prediction/AppTarget;Landroid/content/pm/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/r;->g:Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/android/quickstep/util/r;->h:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/android/quickstep/util/r;->i:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/quickstep/util/r;->j:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/quickstep/util/r;->k:Landroid/app/prediction/AppTarget;

    iput-object p6, p0, Lcom/android/quickstep/util/r;->l:Landroid/content/pm/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/quickstep/util/r;->g:Ljava/util/function/Supplier;

    iget-object v1, p0, Lcom/android/quickstep/util/r;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/quickstep/util/r;->i:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/quickstep/util/r;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/quickstep/util/r;->k:Landroid/app/prediction/AppTarget;

    iget-object v5, p0, Lcom/android/quickstep/util/r;->l:Landroid/content/pm/ShortcutInfo;

    invoke-static/range {v0 .. v5}, Lcom/android/quickstep/util/ImageActionUtils;->a(Ljava/util/function/Supplier;Landroid/graphics/RectF;Landroid/content/Context;Ljava/lang/String;Landroid/app/prediction/AppTarget;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method
