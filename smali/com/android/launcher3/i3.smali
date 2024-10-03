.class public final synthetic Lcom/android/launcher3/i3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/PagedView;

.field public final synthetic h:Ljava/util/ArrayList;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/PagedView;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/i3;->g:Lcom/android/launcher3/PagedView;

    iput-object p2, p0, Lcom/android/launcher3/i3;->h:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/launcher3/i3;->i:I

    iput p4, p0, Lcom/android/launcher3/i3;->j:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/i3;->g:Lcom/android/launcher3/PagedView;

    iget-object v1, p0, Lcom/android/launcher3/i3;->h:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher3/i3;->i:I

    iget p0, p0, Lcom/android/launcher3/i3;->j:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher3/PagedView;->h(Lcom/android/launcher3/PagedView;Ljava/util/ArrayList;IILjava/lang/Integer;)V

    return-void
.end method
