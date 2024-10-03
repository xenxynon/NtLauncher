.class public final synthetic Lcom/android/launcher3/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/MultipageCellLayout;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:[I

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/b3;->a:Lcom/android/launcher3/MultipageCellLayout;

    iput p2, p0, Lcom/android/launcher3/b3;->b:I

    iput p3, p0, Lcom/android/launcher3/b3;->c:I

    iput p4, p0, Lcom/android/launcher3/b3;->d:I

    iput p5, p0, Lcom/android/launcher3/b3;->e:I

    iput-object p6, p0, Lcom/android/launcher3/b3;->f:Landroid/view/View;

    iput-object p7, p0, Lcom/android/launcher3/b3;->g:[I

    iput-boolean p8, p0, Lcom/android/launcher3/b3;->h:Z

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/b3;->a:Lcom/android/launcher3/MultipageCellLayout;

    iget v1, p0, Lcom/android/launcher3/b3;->b:I

    iget v2, p0, Lcom/android/launcher3/b3;->c:I

    iget v3, p0, Lcom/android/launcher3/b3;->d:I

    iget v4, p0, Lcom/android/launcher3/b3;->e:I

    iget-object v5, p0, Lcom/android/launcher3/b3;->f:Landroid/view/View;

    iget-object v6, p0, Lcom/android/launcher3/b3;->g:[I

    iget-boolean v7, p0, Lcom/android/launcher3/b3;->h:Z

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/MultipageCellLayout;->d(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[IZ)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
