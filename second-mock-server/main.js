import KoaRouter from 'koa-router'
import Koa from 'koa'
import BodyParser from 'koa-bodyparser'

const port = 4000;
const app = new Koa();
const router = new KoaRouter();
app.use(BodyParser());

const data = [
    {"id": 1, "name": "John"},
    {"id": 2, "name": "Ann"}
]

router.get('/',
    async ctx => {
        ctx.body = data;
    }
);


app.use(router.routes()).use(router.allowedMethods());
app.listen(port, () => console.log('Second Mock Server running'));