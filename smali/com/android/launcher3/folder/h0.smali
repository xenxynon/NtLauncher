.class public final synthetic Lcom/android/launcher3/folder/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/folder/PreviewBackground;

.field public final synthetic h:Lcom/android/launcher3/CellLayout;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/PreviewBackground;Lcom/android/launcher3/CellLayout;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/h0;->g:Lcom/android/launcher3/folder/PreviewBackground;

    iput-object p2, p0, Lcom/android/launcher3/folder/h0;->h:Lcom/android/launcher3/CellLayout;

    iput p3, p0, Lcom/android/launcher3/folder/h0;->i:I

    iput p4, p0, Lcom/android/launcher3/folder/h0;->j:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/folder/h0;->g:Lcom/android/launcher3/folder/PreviewBackground;

    iget-object v1, p0, Lcom/android/launcher3/folder/h0;->h:Lcom/android/launcher3/CellLayout;

    iget v2, p0, Lcom/android/launcher3/folder/h0;->i:I

    iget p0, p0, Lcom/android/launcher3/folder/h0;->j:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/folder/PreviewBackground;->b(Lcom/android/launcher3/folder/PreviewBackground;Lcom/android/launcher3/CellLayout;II)V

    return-void
.end method
