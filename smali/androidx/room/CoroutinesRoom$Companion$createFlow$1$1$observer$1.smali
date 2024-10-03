.class public final Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;
.super Landroidx/room/InvalidationTracker$Observer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $observerChannel:Lk6/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/f<",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tableNames:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Lk6/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lk6/f<",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;->$tableNames:[Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;->$observerChannel:Lk6/f;

    invoke-direct {p0, p1}, Landroidx/room/InvalidationTracker$Observer;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onInvalidated(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;->$observerChannel:Lk6/f;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-interface {p0, p1}, Lk6/z;->B(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
