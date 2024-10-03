.class public final synthetic Lcom/android/launcher3/util/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/FlagOp;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/util/FlagOp;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/FlagOp;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/l;->a:Lcom/android/launcher3/util/FlagOp;

    iput p2, p0, Lcom/android/launcher3/util/l;->b:I

    return-void
.end method


# virtual methods
.method public final apply(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/l;->a:Lcom/android/launcher3/util/FlagOp;

    iget p0, p0, Lcom/android/launcher3/util/l;->b:I

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/util/FlagOp;->a(Lcom/android/launcher3/util/FlagOp;II)I

    move-result p0

    return p0
.end method
