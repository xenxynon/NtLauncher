.class final Landroidx/room/RoomDatabaseKt$createTransactionContext$1;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RoomDatabaseKt;->createTransactionContext(Landroidx/room/RoomDatabase;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.room.RoomDatabaseKt"
    f = "RoomDatabase.kt"
    l = {
        0x63
    }
    m = "createTransactionContext"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-",
            "Landroidx/room/RoomDatabaseKt$createTransactionContext$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lq5/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/room/RoomDatabaseKt$createTransactionContext$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/room/RoomDatabaseKt$createTransactionContext$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/room/RoomDatabaseKt$createTransactionContext$1;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Landroidx/room/RoomDatabaseKt;->access$createTransactionContext(Landroidx/room/RoomDatabase;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
