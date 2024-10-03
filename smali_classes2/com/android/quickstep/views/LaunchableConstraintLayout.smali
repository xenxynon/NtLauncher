.class public Lcom/android/quickstep/views/LaunchableConstraintLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lg0/g;


# instance fields
.field private final delegate:Lg0/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lg0/h;

    new-instance v0, Lcom/android/quickstep/views/LaunchableConstraintLayout$delegate$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/LaunchableConstraintLayout$delegate$1;-><init>(Lcom/android/quickstep/views/LaunchableConstraintLayout;)V

    invoke-direct {p1, p0, v0}, Lg0/h;-><init>(Landroid/view/View;Ly5/l;)V

    iput-object p1, p0, Lcom/android/quickstep/views/LaunchableConstraintLayout;->delegate:Lg0/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lg0/h;

    new-instance p2, Lcom/android/quickstep/views/LaunchableConstraintLayout$delegate$1;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/LaunchableConstraintLayout$delegate$1;-><init>(Lcom/android/quickstep/views/LaunchableConstraintLayout;)V

    invoke-direct {p1, p0, p2}, Lg0/h;-><init>(Landroid/view/View;Ly5/l;)V

    iput-object p1, p0, Lcom/android/quickstep/views/LaunchableConstraintLayout;->delegate:Lg0/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lg0/h;

    new-instance p2, Lcom/android/quickstep/views/LaunchableConstraintLayout$delegate$1;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/LaunchableConstraintLayout$delegate$1;-><init>(Lcom/android/quickstep/views/LaunchableConstraintLayout;)V

    invoke-direct {p1, p0, p2}, Lg0/h;-><init>(Landroid/view/View;Ly5/l;)V

    iput-object p1, p0, Lcom/android/quickstep/views/LaunchableConstraintLayout;->delegate:Lg0/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lg0/h;

    new-instance p2, Lcom/android/quickstep/views/LaunchableConstraintLayout$delegate$1;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/LaunchableConstraintLayout$delegate$1;-><init>(Lcom/android/quickstep/views/LaunchableConstraintLayout;)V

    invoke-direct {p1, p0, p2}, Lg0/h;-><init>(Landroid/view/View;Ly5/l;)V

    iput-object p1, p0, Lcom/android/quickstep/views/LaunchableConstraintLayout;->delegate:Lg0/h;

    return-void
.end method

.method public static final synthetic access$setVisibility$s2114496391(Lcom/android/quickstep/views/LaunchableConstraintLayout;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public setShouldBlockVisibilityChanges(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/LaunchableConstraintLayout;->delegate:Lg0/h;

    invoke-virtual {p0, p1}, Lg0/h;->setShouldBlockVisibilityChanges(Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/LaunchableConstraintLayout;->delegate:Lg0/h;

    invoke-virtual {p0, p1}, Lg0/h;->a(I)V

    return-void
.end method
