.class public final synthetic Lcom/android/quickstep/util/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/util/StaggeredWorkspaceAnim;

.field public final synthetic h:I

.field public final synthetic i:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/StaggeredWorkspaceAnim;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/x0;->g:Lcom/android/quickstep/util/StaggeredWorkspaceAnim;

    iput p2, p0, Lcom/android/quickstep/util/x0;->h:I

    iput-wide p3, p0, Lcom/android/quickstep/util/x0;->i:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/util/x0;->g:Lcom/android/quickstep/util/StaggeredWorkspaceAnim;

    iget v1, p0, Lcom/android/quickstep/util/x0;->h:I

    iget-wide v2, p0, Lcom/android/quickstep/util/x0;->i:J

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->a(Lcom/android/quickstep/util/StaggeredWorkspaceAnim;IJLandroid/view/View;)V

    return-void
.end method
